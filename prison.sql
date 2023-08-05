ALTER TABLE ONLY public.deaths_in_prison
    ADD CONSTRAINT deaths_in_prison_pkey PRIMARY KEY (death_id);


--
-- Name: federal_sections federal_sections_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.federal_sections
    ADD CONSTRAINT federal_sections_pkey PRIMARY KEY (section_id);


--
-- Name: illness illness_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.illness
    ADD CONSTRAINT illness_pkey PRIMARY KEY (prisoner_id);


--
-- Name: prisoners prisoners_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.prisoners
    ADD CONSTRAINT prisoners_pkey PRIMARY KEY (prisoner_id);


--
-- Name: prisons prisons_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.prisons
    ADD CONSTRAINT prisons_pkey PRIMARY KEY (prison_id);


--
-- Name: staff staff_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.staff
    ADD CONSTRAINT staff_pkey PRIMARY KEY (staff_id);


--
-- Name: state_year state_year_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.state_year
    ADD CONSTRAINT state_year_pkey PRIMARY KEY (state_year_id);


--
-- Name: budget_flow budget_flow_prison_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.budget_flow
    ADD CONSTRAINT budget_flow_prison_id_fkey FOREIGN KEY (prison_id) REFERENCES public.prisons(prison_id) NOT VALID;


--
-- Name: budget_flow budget_flow_state_year_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.budget_flow
    ADD CONSTRAINT budget_flow_state_year_id_fkey FOREIGN KEY (state_year_id) REFERENCES public.state_year(state_year_id) NOT VALID;


--
-- Name: crime_gender_numbers crime_gender_numbers_state_year_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.crime_gender_numbers
    ADD CONSTRAINT crime_gender_numbers_state_year_id_fkey FOREIGN KEY (state_year_id) REFERENCES public.state_year(state_year_id) NOT VALID;


--
-- Name: deaths_in_prison deaths_in_prison_prison_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.deaths_in_prison
    ADD CONSTRAINT deaths_in_prison_prison_id_fkey FOREIGN KEY (prison_id) REFERENCES public.prisons(prison_id) NOT VALID;


--
-- Name: illness illness_prisoner_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.illness
    ADD CONSTRAINT illness_prisoner_id_fkey FOREIGN KEY (prisoner_id) REFERENCES public.prisoners(prisoner_id) NOT VALID;


--
-- Name: prisoner_released prisoner_released_prisoner_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.prisoner_released
    ADD CONSTRAINT prisoner_released_prisoner_id_fkey FOREIGN KEY (prisoner_id) REFERENCES public.prisoners(prisoner_id) NOT VALID;


--
-- Name: prisoners prisoners_prison_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.prisoners
    ADD CONSTRAINT prisoners_prison_id_fkey FOREIGN KEY (prison_id) REFERENCES public.prisons(prison_id) NOT VALID;


--
-- Name: prisoners prisoners_section_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.prisoners
    ADD CONSTRAINT prisoners_section_id_fkey FOREIGN KEY (section_id) REFERENCES public.federal_sections(section_id) NOT VALID;


--
-- Name: staff staff_prison_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.staff
    ADD CONSTRAINT staff_prison_id_fkey FOREIGN KEY (prison_id) REFERENCES public.prisons(prison_id) NOT VALID;


--
-- Name: year_wise_numbers year_wise_numbers_state_year_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.year_wise_numbers
    ADD CONSTRAINT year_wise_numbers_state_year_id_fkey FOREIGN KEY (state_year_id) REFERENCES public.state_year(state_year_id) NOT VALID;
